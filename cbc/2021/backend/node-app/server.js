const mysql = require('mysql2');
const axios = require('axios').default;

// create the connection to database
const connection = mysql.createConnection({
  host: 'localhost',
  port: 3307,
  user: 'root',
  password: 'root',
  database: 'playground',
});

// Create table
create_ridings_query = `
    CREATE TABLE ridings (
    id int(11) NOT NULL,
    ridingNumber int(11) DEFAULT NULL,
    englishName varchar(255) DEFAULT NULL,
    totalVoters int(11) DEFAULT NULL,
    totalPolls int(11) DEFAULT NULL,
    previousElectedPartyCode varchar(10) DEFAULT NULL,
    resultStatus text,
    isCandidateElected int(1) DEFAULT 0,
    pollsReported int(11) DEFAULT NULL,
    totalVotesReported int(11) DEFAULT NULL,
    lastResultTime datetime DEFAULT NULL,
    candidateVotesLead int(11) DEFAULT NULL,
    leadingPartyId int(11) DEFAULT NULL,
    leadingPartyCode varchar(10) DEFAULT NULL,
    leadingPartyVotes int(11) DEFAULT NULL,
    leadingPartyVotesPercentage varchar(6) DEFAULT NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;`;

connection.query(create_ridings_query, function (err, results, fields) {
  console.log('ridings table created');
});

alter_ridings_query = `
    ALTER TABLE ridings
        ADD PRIMARY KEY (id),
        ADD KEY updated_at (updated_at);`;

connection.query(create_ridings_query, function (err, results, fields) {
  console.log('ridings table altered');
});

// Get data
axios
  .get('https://canopy.cbc.ca/live/election_hub2/prov/NL2021/all')
  .then(function (response) {
    console.log('Data fetched.');
    insertData(response.data);
  })
  .catch(function (error) {
    console.log('Data fetch: ', error);
  });

function insertData(data) {
  console.log('Inserting data.');

  let records = [];

  data.data.ridings.forEach(riding => {
    let leadingParty = riding.parties.find(party => party.votesPosition === 1);
    records.push([
      riding.id,
      riding.ridingNumber,
      riding.englishName,
      riding.totalVoters,
      riding.totalPolls,
      riding.previousElectedPartyCode,
      riding.resultStatus.join(),
      riding.isCandidateElected,
      riding.pollsReported,
      riding.totalVotesReported,
      riding.lastResultTime,
      riding.candidateVotesLead,
      leadingParty.partyId,
      leadingParty.englishCode,
      leadingParty.votes,
      leadingParty.votesPercentage,
    ]);
  });

  var riding_bulk_insert_query =
    'INSERT INTO `ridings`(`id`, `ridingNumber`, `englishName`, `totalVoters`, `totalPolls`, `previousElectedPartyCode`, `resultStatus`, `isCandidateElected`, `pollsReported`, `totalVotesReported`, `lastResultTime`, `candidateVotesLead`, `leadingPartyId`, `leadingPartyCode`, `leadingPartyVotes`, `leadingPartyVotesPercentage`) VALUES ?';

  connection.query(riding_bulk_insert_query, [records], function (err) {
    if (err) throw err;
    console.log('Data inserted.');
    connection.end();
  });
}
