
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
      'PIH Health Good Samaritan Hospital',
      '1225 Wilshire Blvd
Los Angeles, CA 90017',
      'Los Angeles',
      'CA',
      'Drop off or arrange for pickup, Attn: Donny Talbot 213-977-2206',
      'Yes',
      '34.054492',
      '-118.2649048'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Good Samaritan Hospital'
        AND o.latitude = '34.054492'
        AND o.longitude = '-118.2649048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Good Samaritan Hospital'
        AND o.latitude = '34.054492'
        AND o.longitude = '-118.2649048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Good Samaritan Hospital'
        AND o.latitude = '34.054492'
        AND o.longitude = '-118.2649048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Good Samaritan Hospital'
        AND o.latitude = '34.054492'
        AND o.longitude = '-118.2649048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Maxair CAPR shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Good Samaritan Hospital'
        AND o.latitude = '34.054492'
        AND o.longitude = '-118.2649048'));

COMMIT;
