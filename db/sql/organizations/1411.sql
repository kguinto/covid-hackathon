
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
      'Omni medical center ',
      '4666 McDermott Rd
Plano, TX 75024',
      'Plano',
      'TX',
      'Mail',
      'Yes',
      '33.0936014',
      '-96.7936582'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni medical center '
        AND o.latitude = '33.0936014'
        AND o.longitude = '-96.7936582'));

COMMIT;
