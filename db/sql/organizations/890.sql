
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
      'Holy Family Manor ',
      '301 Nazareth Way
Pittsburgh, PA 15229',
      'Pittsburgh ',
      'PA',
      'Front door- Attn Maura',
      'No',
      '40.5087166',
      '-80.0431232'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Family Manor '
        AND o.latitude = '40.5087166'
        AND o.longitude = '-80.0431232'));

COMMIT;
