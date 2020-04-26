
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
      'St Anthony Health Center',
      '1107 Hazeltine Blvd #200
Chaska, MN 55318',
      'Chaska',
      'MN',
      'leave at door of suite #200',
      'Yes',
      '44.8358614',
      '-93.5989097'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '44.8358614'
        AND o.longitude = '-93.5989097'));

COMMIT;
