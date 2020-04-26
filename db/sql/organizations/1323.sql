
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
      'Primary Care Partners, Family Medical Center at Dover',
      '375 E McFarlan St
Dover, NJ 07801',
      'Dover',
      'NJ',
      'Please call before delivery so as supplies not taken by neighborhood residents',
      'Yes',
      '40.8899088',
      '-74.5440854'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care Partners, Family Medical Center at Dover'
        AND o.latitude = '40.8899088'
        AND o.longitude = '-74.5440854'));

COMMIT;
