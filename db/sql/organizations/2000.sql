
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
      'St. Joseph''s Health Hospital',
      '301 Prospect Ave
Syracuse, NY 13203',
      'Syracuse',
      'NY',
      'Please call first to coordinate drop-off: 315-214-6855',
      'No',
      '43.0559585',
      '-76.1495044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Health Hospital'
        AND o.latitude = '43.0559585'
        AND o.longitude = '-76.1495044'));

COMMIT;
