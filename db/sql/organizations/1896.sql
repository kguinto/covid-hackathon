
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
      'San Gabriel Valley Medical Center',
      '438 W Las Tunas Dr
San Gabriel, CA 91776',
      'San Gabriel',
      'CA',
      'Call the ER 6265706514',
      'I''m not sure.',
      '34.1023234',
      '-118.1055415'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Gabriel Valley Medical Center'
        AND o.latitude = '34.1023234'
        AND o.longitude = '-118.1055415'));

COMMIT;
