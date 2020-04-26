
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
      'Wise River MT Volunteer Ambulance Service',
      '64795 MT-43
Wise River, MT 59762',
      'Wise River ',
      'MT',
      'Leave supplies ',
      'Yes',
      '45.7928187',
      '-112.9570339'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wise River MT Volunteer Ambulance Service'
        AND o.latitude = '45.7928187'
        AND o.longitude = '-112.9570339'));

COMMIT;
