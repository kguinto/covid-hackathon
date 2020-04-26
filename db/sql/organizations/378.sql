
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
      'Downey Community Health Center',
      '8425 Iowa St
Downey, CA 90241',
      'Downey',
      'CA',
      '',
      'Yes',
      '33.9369471',
      '-118.1321091'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Downey Community Health Center'
        AND o.latitude = '33.9369471'
        AND o.longitude = '-118.1321091'));

COMMIT;
