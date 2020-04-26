
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
      'Life Care Skagit Valley',
      '1462 Cascade Hwy, WA-20
Sedro-Woolley, WA 98284',
      'Sedro Woolley ',
      'WA',
      'At front door/lobby',
      'Yes',
      '48.4982347',
      '-122.2651584'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Skagit Valley'
        AND o.latitude = '48.4982347'
        AND o.longitude = '-122.2651584'));

COMMIT;
