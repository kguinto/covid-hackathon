
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
      'Armour Family Medicine',
      '728 W Sherrod Ave
Covington, TN 38019',
      'Covington',
      'TN',
      '',
      'Unsure',
      '35.5556731',
      '-89.6539542'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Armour Family Medicine'
        AND o.latitude = '35.5556731'
        AND o.longitude = '-89.6539542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Armour Family Medicine'
        AND o.latitude = '35.5556731'
        AND o.longitude = '-89.6539542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Armour Family Medicine'
        AND o.latitude = '35.5556731'
        AND o.longitude = '-89.6539542'));

COMMIT;
