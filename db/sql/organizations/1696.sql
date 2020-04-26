
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
      'Columbia Lutheran Home ',
      '4700 Phinney Ave N
Seattle, WA 98103',
      'Seattle',
      'WA',
      'ATTN: Ellie Brown ',
      'Yes',
      '47.6631431',
      '-122.3531435'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia Lutheran Home '
        AND o.latitude = '47.6631431'
        AND o.longitude = '-122.3531435'));

COMMIT;
