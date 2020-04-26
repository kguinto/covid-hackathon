
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
      'Kaiser Permanente Los Angeles Medical Center',
      '2211 Michigan Ave
Santa Monica, CA 90404',
      'Los Angeles (Zip 90027)',
      'CA',
      'Attn: Christian Paredes, Department Administrator, 2 North Observation Unit ',
      'No',
      '34.0250147',
      '-118.4717062'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles Medical Center'
        AND o.latitude = '34.0250147'
        AND o.longitude = '-118.4717062'));

COMMIT;
