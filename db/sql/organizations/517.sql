
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
      'Kaiser Permanente - South San Francisco',
      '1200 El Camino Real
South San Francisco, 94080',
      'South San Francisco',
      'CA',
      'Emergency Department

ATTN: Ginny Chu

Ginny.C.Chu@kp.org',
      'Yes',
      '37.6587814',
      '-122.4385597'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - South San Francisco'
        AND o.latitude = '37.6587814'
        AND o.longitude = '-122.4385597'));

COMMIT;
