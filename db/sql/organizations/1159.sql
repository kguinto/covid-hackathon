
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
      'Healthcare California',
      '6327 N Fresno St #104
Fresno, CA 93710',
      'Fresno',
      'CA',
      'Call 559-243-9990 and a staff member can coordinate w/ you',
      'Yes',
      '36.8287582',
      '-119.7832487'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare California'
        AND o.latitude = '36.8287582'
        AND o.longitude = '-119.7832487'));

COMMIT;
