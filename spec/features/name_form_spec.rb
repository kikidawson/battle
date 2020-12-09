feature "Testing name form" do
  scenario 'players can enter their names into a form' do
    visit "/"
    fill_in :player_one_name, with: 'Big'
    fill_in :player_two_name, with: 'Little'
    click_button 'Submit Names'
    expect(page).to have_content "Welcome! Big & Little!"
  end
end
