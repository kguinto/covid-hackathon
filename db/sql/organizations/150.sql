
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
      'Queen of the Valley Medical Center',
      '1000 Trancas St
Napa, CA 94558',
      'Napa',
      'CA',
      'PPE FOR STAFF ',
      'Yes',
      '38.324482',
      '-122.2971094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Queen of the Valley Medical Center'
        AND o.latitude = '38.324482'
        AND o.longitude = '-122.2971094'));

COMMIT;
