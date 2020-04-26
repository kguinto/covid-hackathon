
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
      'Pennsylvania Ambulance',
      '1000 Dunham Dr
Dunmore, PA 18512',
      'Dunmore',
      'PA',
      'Attn:  Jennifer Berg',
      'Yes',
      '41.4194464',
      '-75.6008034'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pennsylvania Ambulance'
        AND o.latitude = '41.4194464'
        AND o.longitude = '-75.6008034'));

COMMIT;
