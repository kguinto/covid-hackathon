
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
      'Boyd County EMS',
      '2758 Greenup Ave
Ashland, KY 41101',
      'Ashland',
      'KY',
      '2758 Greenup Ave.  Ashland KY 41101',
      'Yes',
      '38.4719045',
      '-82.6245882'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Anything that will help EMS',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boyd County EMS'
        AND o.latitude = '38.4719045'
        AND o.longitude = '-82.6245882'));

COMMIT;
