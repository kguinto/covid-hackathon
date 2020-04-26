
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
      'Rose Court Assisted Living and Memory Care ',
      '2935 N 18th Place
Phoenix, AZ 85016',
      'Phoenix',
      'AZ',
      'Attn: Wellness',
      'Yes',
      '33.4814793',
      '-112.0412096'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rose Court Assisted Living and Memory Care '
        AND o.latitude = '33.4814793'
        AND o.longitude = '-112.0412096'));

COMMIT;
