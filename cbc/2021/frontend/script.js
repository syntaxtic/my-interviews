$(function () {
  let topContainer = $('#topContainer');
  let partiesContainer = $('#partiesContainer');
  let loader = $('#loader');
  let tableContainer = $('#detailsTable');
  let parties = [];
  let configParties = [];

  fetch('https://canopy.cbc.ca/live/election_hub2/prov/NL2021/all')
    .then(response => response.json())
    .then(data => {
      parties = data.data.parties;
      configParties = data.data.config.parties;
      showData();
      loader.hide();
    });

  function showData() {
    parties.forEach(party => {
      let cardContainer = $('<div>', {
        class: 'col-12 col-md-4 col-lg-3 mb-4 cardContainer ' + party.id,
      }).appendTo(partiesContainer);

      let card = $('<div>', {
        class: 'card',
      }).appendTo(cardContainer);

      let cardBody = $('<div>', {
        class: 'card-body',
      }).appendTo(card);

      let cardTitle = $('<h5>', {
        class: 'card-title',
        title: 'hello',
      }).appendTo(cardBody);

      cardTitle.text(party.governmentCode);

      let cardText = $('<p>', {
        class: 'card-text',
      }).appendTo(cardTitle);

      cardText.text(party.englishName);

      let partyConfig = configParties.find(
        p => p.partyCode === party.governmentCode
      );
      if (partyConfig?.partyHex) {
        let partyColor = partyConfig.partyHex;

        card.css('background-color', partyColor);
        card.css('color', '#fff');
      }

      cardContainer.click(function (e) {
        showDetails(party);
      });
    });
  }

  function showDetails(party) {
    tableContainer.show();
    $('#detailsTable table').html('');

    $(
      '<tr><th>Total Votes</th><td>' + party.totalVotes + '</td></tr>'
    ).appendTo('#detailsTable table');
    $(
      '<tr><th>Total Vote Percentage</th><td>' +
        party.totalVotesPercentage +
        '</td></tr>'
    ).appendTo('#detailsTable table');
  }
});
