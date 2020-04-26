
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
      'St Anthony''s ',
      '11567 Canterwood Blvd
Gig Harbor, WA 98332',
      'Gig Harbor ',
      'WA',
      'Attention PPE donations CC Sara Chacon
Diagnostic imaging 
11567 Canterwood Blvd 
Gig Harbor Wa 98332',
      'Yes',
      '47.3644245',
      '-122.6134684'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony''s '
        AND o.latitude = '47.3644245'
        AND o.longitude = '-122.6134684'));

COMMIT;
