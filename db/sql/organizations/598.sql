
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
      'South Shore Health',
      '55 Fogg Rd
Weymouth, MA 02190',
      'South Weymouth',
      'MA',
      'Drop off at the McKim Lobby Main Entrance',
      '',
      '42.1758242',
      '-70.9541227'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Shore Health'
        AND o.latitude = '42.1758242'
        AND o.longitude = '-70.9541227'));

COMMIT;
