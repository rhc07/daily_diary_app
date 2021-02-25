def first_diary_entry
  visit('/')
  fill_in :title, with: 'Film Club'
  fill_in :diary_entry, with: 'Going to the cinema'
  click_button 'Submit'
end
