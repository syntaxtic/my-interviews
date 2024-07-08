module.exports = function sortCategoriesForInsert(inputJson) {

    // Create an object to hold the children based on the parent id
    let categoriesTree = {
        // "parentID": [children]
        // parentID for root categories is "root"
    };

    inputJson.forEach(category => {
        let parent_id = category.parent_id ?? "root";

        if(categoriesTree[parent_id])
            categoriesTree[parent_id].push(category);
        else
            categoriesTree[parent_id] = [category];
    });

    // Build the sorted array depth-first or breadth-first
    // Let's select depth-first here
    function flatObject(obj, rootID){
        if(!obj[rootID]) return [];
        let sortedCategories = [];
        for(let i = 0; i < obj[rootID].length; i++){
            sortedCategories.push(obj[rootID][i]);
            sortedCategories = sortedCategories.concat(flatObject(obj, obj[rootID][i].id));
        }
        return sortedCategories;
    }

    return flatObject(categoriesTree, "root");
}

// Time complexity: O(n)
// Memory complexity: O(n)