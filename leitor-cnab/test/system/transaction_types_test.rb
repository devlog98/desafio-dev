require "application_system_test_case"

class TransactionTypesTest < ApplicationSystemTestCase
  setup do
    @transaction_type = transaction_types(:one)
  end

  test "visiting the index" do
    visit transaction_types_url
    assert_selector "h1", text: "Transaction types"
  end

  test "should create transaction type" do
    visit transaction_types_url
    click_on "New transaction type"

    fill_in "Identifier", with: @transaction_type.identifier
    fill_in "Name", with: @transaction_type.name
    check "Operation" if @transaction_type.operation
    click_on "Create Transaction type"

    assert_text "Transaction type was successfully created"
    click_on "Back"
  end

  test "should update Transaction type" do
    visit transaction_type_url(@transaction_type)
    click_on "Edit this transaction type", match: :first

    fill_in "Identifier", with: @transaction_type.identifier
    fill_in "Name", with: @transaction_type.name
    check "Operation" if @transaction_type.operation
    click_on "Update Transaction type"

    assert_text "Transaction type was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction type" do
    visit transaction_type_url(@transaction_type)
    click_on "Destroy this transaction type", match: :first

    assert_text "Transaction type was successfully destroyed"
  end
end
