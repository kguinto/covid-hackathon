
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
      'Montclair Hospital Medical Center ',
      '5000 San Bernadino Street
Montclair, CA 91763 ',
      'Montclair ',
      'CA',
      'Attn: CNO',
      'Yes',
      '34.0787364',
      '-117.6960075'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montclair Hospital Medical Center '
        AND o.latitude = '34.0787364'
        AND o.longitude = '-117.6960075'));

COMMIT;
