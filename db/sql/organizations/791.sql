
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
      'Signature Hospice',
      '2620 River Rd #300
Eugene, OR 97404',
      'Eugene',
      'OR',
      'This is our mailing address, please send by mail if possible. If needing to do drop off doors are open Mon-Fri 8-5, we''re on the third floor, ring the doorbell or knock on the door with the sign.',
      'Yes',
      '44.1020895',
      '-123.1313974'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Hospice'
        AND o.latitude = '44.1020895'
        AND o.longitude = '-123.1313974'));

COMMIT;
