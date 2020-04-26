
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
      'Mercy Health - Anderson Hospital',
      '7500 State Rd
Cincinnati, OH 45255',
      'Cincinnati',
      'OH',
      'Drop off at front entrance',
      'Yes',
      '39.0856971',
      '-84.348906'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - Anderson Hospital'
        AND o.latitude = '39.0856971'
        AND o.longitude = '-84.348906'));

COMMIT;
