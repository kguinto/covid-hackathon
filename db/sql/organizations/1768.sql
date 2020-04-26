
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
      'Maple Park Villiage',
      '776 N Union St
Westfield, IN 46074',
      'Westfield ',
      'IN',
      'Front door lobby',
      'Yes',
      '40.053801',
      '-86.126803'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maple Park Villiage'
        AND o.latitude = '40.053801'
        AND o.longitude = '-86.126803'));

COMMIT;
