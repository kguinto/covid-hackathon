
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
      'Valley Allergy & Asthma Clinic',
      '10365 SE Sunnyside Rd #245
Clackamas, OR 97015',
      'Clackamas',
      'OR',
      'Suite 245',
      'Yes',
      '45.4339223',
      '-122.55815'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Allergy & Asthma Clinic'
        AND o.latitude = '45.4339223'
        AND o.longitude = '-122.55815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Allergy & Asthma Clinic'
        AND o.latitude = '45.4339223'
        AND o.longitude = '-122.55815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Allergy & Asthma Clinic'
        AND o.latitude = '45.4339223'
        AND o.longitude = '-122.55815'));

COMMIT;
