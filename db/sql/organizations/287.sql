
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
      'Community Options ',
      '161 Woodruff Ave
Brooklyn, NY 11226',
      'New York - Brooklyn',
      'NY',
      'Attn: Tiffany Dacre ',
      'Yes',
      '40.6546373',
      '-73.9607338'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.6546373'
        AND o.longitude = '-73.9607338'));

COMMIT;
