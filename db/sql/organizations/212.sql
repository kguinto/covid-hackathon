
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
      'Winter Haven Hospital',
      '200 Ave F NE
Winter Haven, FL 33881',
      'Winter Haven',
      'FL',
      'Take to the ER,security will take it from you at the front door  ',
      'Yes',
      '28.0279017',
      '-81.7254974'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winter Haven Hospital'
        AND o.latitude = '28.0279017'
        AND o.longitude = '-81.7254974'));

COMMIT;
