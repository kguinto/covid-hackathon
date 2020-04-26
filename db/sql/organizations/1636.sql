
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
      'Shands Jacksonville Hospital ',
      '580 8th St W #9009
Jacksonville, FL 32209',
      'Jacksonville ',
      'FL',
      'Drop it off at the front desk. ',
      'Yes',
      '30.3460975',
      '-81.6631774'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shands Jacksonville Hospital '
        AND o.latitude = '30.3460975'
        AND o.longitude = '-81.6631774'));

COMMIT;
