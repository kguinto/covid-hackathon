
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
      'The Bridge - Administrative Offices',
      '290 Lenox Ave., 3rd Fl.
New York, NY 10027 ',
      'New York - Manhattan',
      'NY',
      'Anything that is convenient for you',
      'Unsure',
      '40.8073914',
      '-73.9452863'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge - Administrative Offices'
        AND o.latitude = '40.8073914'
        AND o.longitude = '-73.9452863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge - Administrative Offices'
        AND o.latitude = '40.8073914'
        AND o.longitude = '-73.9452863'));

COMMIT;
