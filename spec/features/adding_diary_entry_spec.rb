feature 'adding new diary entries' do
  scenario 'submitting new diary entries' do
    visit('/')
    fill_in :diary_entry, with: 'Going to the cinema'
    click_button 'Submit'
    expect(page).to have_content 'Going to the cinema'
  end
end
