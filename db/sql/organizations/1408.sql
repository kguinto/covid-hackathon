
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
      'Mayhill Hospital',
      '2809 S Mayhill Rd
Denton, TX 76208',
      'Denton',
      'TX',
      'Drop off at front reception desk.',
      'Yes',
      '33.175862',
      '-97.0866238'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mayhill Hospital'
        AND o.latitude = '33.175862'
        AND o.longitude = '-97.0866238'));

COMMIT;
