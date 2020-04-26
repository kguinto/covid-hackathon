
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
      'Schoenbrunn Healthcare',
      '2594 E High Ave
New Philadelphia, OH 44663',
      'New Philadelphia',
      'OH',
      'Front door lobby',
      'No',
      '40.4546185',
      '-81.4010239'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Schoenbrunn Healthcare'
        AND o.latitude = '40.4546185'
        AND o.longitude = '-81.4010239'));

COMMIT;
