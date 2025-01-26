$(document).ready(function() {
    const $userDeleteForm = $("#userDeleteForm");
    const $userTableList = $("#user-table-list");
    const $userForm = $("#user-form");
    const $userButton = $("#user-submit");
    const $title = $("#title");
    let isUserUpdateMode = false;
    let currentUserId = null;

    // Set up event listener
    const openUserDeleteForm = () => {
        $userDeleteForm.show();
        $title.text("Delete Product");
    };

    const closeUserDeleteForm = () => {
        $userDeleteForm.hide();
        $userForm[0].reset();
        $userButton.text("Submit");
        isUserUpdateMode = false;
        currentUserId = null;
    };

    $("#delete-user").on("click", openUserDeleteForm);
    $("#userDeleteForm-close").on("click", closeUserDeleteForm);

    // Clear the text fields
    $("#user-submit").on("click", function () {
        $userDeleteForm .hide();
    });

    // Load items
    const LoadUserIntoTable = async () => {
        await loadUserFromBackend();
        $userTableList.empty();
        userDataList.forEach((user) => {
            console.log(user);
            addUserToTable(user, $userTableList);
        });
    };

    LoadUserIntoTable();

});