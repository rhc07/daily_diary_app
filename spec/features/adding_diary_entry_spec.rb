feature 'adding new diary entries' do
  scenario 'submitting new diary entries' do
    first_diary_entry
    expect(page).to have_content 'Film Club'
    expect(page).to have_content 'Going to the cinema'
  end

  scenario 'submitting and storing multiple entries' do
    first_diary_entry
    visit('/')
    fill_in :title, with: 'Brunch'
    fill_in :diary_entry, with: 'Dinner with the fam'
    click_button 'Submit'
    expect(page).to have_content 'Film Club'
    expect(page).to have_content 'Going to the cinema'
    expect(page).to have_content 'Brunch'
    expect(page).to have_content 'Dinner with the fam'
  end
end
