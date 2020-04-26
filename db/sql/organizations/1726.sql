
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
      'Mary Washington Hospital',
      '2300 Fall Hill Ave
Fredericksburg, VA 22401',
      'Fredericksburg',
      'VA',
      'Drop off from 10am-2pm Mon-Fri. See instructions at https://www.marywashingtonhealthcare.com/COVID-19/COVID-19-Donations.aspx',
      'Yes',
      '38.2957373',
      '-77.4979344'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Washington Hospital'
        AND o.latitude = '38.2957373'
        AND o.longitude = '-77.4979344'));

COMMIT;
