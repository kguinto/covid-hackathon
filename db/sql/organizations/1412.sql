
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
      'Columbia st Mary''s Milwaukee hospital ',
      '2394 E North Ave
Milwaukee, WI 53211',
      'Milwaukee ',
      'WI',
      'There are screeners at the ER entrance who can take the package',
      'Yes',
      '43.0601221',
      '-87.8806228'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia st Mary''s Milwaukee hospital '
        AND o.latitude = '43.0601221'
        AND o.longitude = '-87.8806228'));

COMMIT;
