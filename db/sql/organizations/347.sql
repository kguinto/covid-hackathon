
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
      'St David''s Round Rock Medical Center',
      '2508 Arbor Dr
Round Rock, TX 78681',
      'Round Rock',
      'TX',
      'Leave it on the porch. Ring the bell.',
      'Yes',
      '30.5367133',
      '-97.7289188'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St David''s Round Rock Medical Center'
        AND o.latitude = '30.5367133'
        AND o.longitude = '-97.7289188'));

COMMIT;
