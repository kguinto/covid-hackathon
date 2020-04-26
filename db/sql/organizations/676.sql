
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
      'Community Options Inc',
      '7470 Golden Pond Place Suite 100
Amarillo, TX 79121',
      'Amarillo',
      'TX',
      '',
      'Yes',
      '35.1632984',
      '-101.921972'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '35.1632984'
        AND o.longitude = '-101.921972'));

COMMIT;
