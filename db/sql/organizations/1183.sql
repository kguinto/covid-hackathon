
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
      'J&K Healthcare ',
      '332 E Main St
Mt Kisco, NY 10549',
      'Mt. Kisco ',
      'NY',
      '',
      'Yes',
      '41.1921365',
      '-73.7278985'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'J&K Healthcare '
        AND o.latitude = '41.1921365'
        AND o.longitude = '-73.7278985'));

COMMIT;
