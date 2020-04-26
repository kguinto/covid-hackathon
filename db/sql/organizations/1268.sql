
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
      'Waveny Home healthcare Inc.',
      '21 Grove St 2nd Floor
New Canaan, CT 06840',
      'New Canaan',
      'CT',
      '2nd Floor drop off please.',
      'Yes',
      '41.1443657',
      '-73.4999128'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waveny Home healthcare Inc.'
        AND o.latitude = '41.1443657'
        AND o.longitude = '-73.4999128'));

COMMIT;
