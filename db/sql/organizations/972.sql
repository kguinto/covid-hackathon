
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Davita Evanston',
      '1922 Dempster Street
Evanston, IL 60202',
      'Evanston',
      'IL',
      'Ok to drop off in front office. “Front” door is actually located off the back corner parking lot adjacent to the Goodwill drop off. Leave for Courtney. 
Or preferably, can call 847-877-7388, and we can come outside entrance for pickup. ',
      'As long as masks are clean/sterile',
      '42.0410863',
      '-87.7000853'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Davita Evanston'
        AND o.latitude = '42.0410863'
        AND o.longitude = '-87.7000853'));

COMMIT;
