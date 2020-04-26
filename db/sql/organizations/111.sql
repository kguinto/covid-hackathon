
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
      'Bayfront Hospital',
      '701 6th St S
St. Petersburg, FL 33701',
      'St. Petersburg ',
      'FL',
      'ER circle drop off. Ask for Bill Pierce. ',
      'Yes',
      '27.7634827',
      '-82.642014'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Hospital'
        AND o.latitude = '27.7634827'
        AND o.longitude = '-82.642014'));

COMMIT;
