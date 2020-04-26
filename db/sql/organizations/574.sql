
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
      'Primary Urgent Care',
      '1904 Genesee St
Utica, NY 13502',
      'Utica',
      'NY',
      '',
      'Unsure',
      '43.087937',
      '-75.2602567'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Urgent Care'
        AND o.latitude = '43.087937'
        AND o.longitude = '-75.2602567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Urgent Care'
        AND o.latitude = '43.087937'
        AND o.longitude = '-75.2602567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Urgent Care'
        AND o.latitude = '43.087937'
        AND o.longitude = '-75.2602567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Urgent Care'
        AND o.latitude = '43.087937'
        AND o.longitude = '-75.2602567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('eye protection',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Urgent Care'
        AND o.latitude = '43.087937'
        AND o.longitude = '-75.2602567'));

COMMIT;
