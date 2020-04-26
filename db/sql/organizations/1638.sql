
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
      'MHealth Faiirview',
      '1700 University Ave W
St Paul, MN 55104',
      'Saint Paul',
      'MN',
      '7 a.m.-5 p.m. All items should be placed in a box labeled “Donation” and put in your trunk or non-passenger storage area of your vehicle.
Drive up to any of the three delivery sites. Remain in your vehicle. A staff member will come to you to retrieve the box.
The staff member will ask you for the following information:
https://umn.qualtrics.com/jfe/form/SV_9XifmHCuCykmOyh

Large donations: 30 pounds or more, 
Items should be dropped off at either of the two loading docks (located off Pierce Street)
Press the buzzer by the door and security will let you in.
Place the items on the racks labeled “Donation” located on the loading dock.',
      '?',
      '44.9539028',
      '-93.1715336'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'MHealth Faiirview'
        AND o.latitude = '44.9539028'
        AND o.longitude = '-93.1715336'));

COMMIT;
