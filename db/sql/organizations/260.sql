
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
      'Griswold Home Care, PGC',
      '5211 Auth Rd #200
Camp Springs, MD 20746',
      'Suitland',
      'MD',
      '5211 Auth Rd Suite 200',
      'Yes',
      '38.8226525',
      '-76.9163435'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Griswold Home Care, PGC'
        AND o.latitude = '38.8226525'
        AND o.longitude = '-76.9163435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Griswold Home Care, PGC'
        AND o.latitude = '38.8226525'
        AND o.longitude = '-76.9163435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Griswold Home Care, PGC'
        AND o.latitude = '38.8226525'
        AND o.longitude = '-76.9163435'));

COMMIT;
