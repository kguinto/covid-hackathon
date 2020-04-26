
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
      'Buncombe County Rescue Squad',
      '116 Hansel Ave
Asheville, NC 28806',
      'Asheville',
      'NC',
      'Drop off or mail',
      'Yes',
      '35.5926984',
      '-82.583836'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buncombe County Rescue Squad'
        AND o.latitude = '35.5926984'
        AND o.longitude = '-82.583836'));

COMMIT;
