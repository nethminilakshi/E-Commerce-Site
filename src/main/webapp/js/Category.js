$(document).ready(function() {
    const $categoryRegisterForm = $("#categoryRegisterForm");
    const $categoryTableList = $("#category-table-list");
    const $categoryForm = $("#category-form");
    const $categoryButton = $("#category-submit");
    const $title = $("#title");
    let isCategoryUpdateMode = false;
    let currentCategoryId = null;
    const openCategoryRegisterForm = () => {
        $categoryRegisterForm.show();
        $title.text("Register Category");
    };

    const closeCategoryRegisterForm = () => {
        $categoryRegisterForm.hide();
        $categoryForm[0].reset();
        $categoryButton.text("Submit");
        isCategoryUpdateMode = false;
        currentCategoryId = null;
    };

    $("#add-category").on("click", openCategoryRegisterForm);
    $("#categoryRegisterForm-close").on("click", closeCategoryRegisterForm);

    // Clear the text fields
    $("#category-submit").on("click", function() {
        $categoryRegisterForm.hide();
    });

    const LoadCategoryIntoTable = async () => {
        await loadCategoryFromBackend();
        $categoryTableList.empty();
        categoryDataList.forEach((category) => {
            console.log(category);
            addCategoryToTable(category, $categoryTableList);
        });
    };

    LoadCategoryIntoTable();
});