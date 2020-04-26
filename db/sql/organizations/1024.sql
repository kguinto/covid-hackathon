
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
      'Vimi Bajaj MD Obstetrics and Gynecology',
      '640 S Washington St Suite 220
Naperville, IL 60540',
      'Naperville',
      'IL',
      'Bring up to office on second floor',
      'Yes',
      '41.766535',
      '-88.1479796'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vimi Bajaj MD Obstetrics and Gynecology'
        AND o.latitude = '41.766535'
        AND o.longitude = '-88.1479796'));

COMMIT;
