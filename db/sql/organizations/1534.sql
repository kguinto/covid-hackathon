
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
      'The Residence at Timber Pines',
      '3140 Forest Rd
Spring Hill, FL 34606',
      'Spring Hill',
      'FL',
      'leave at front door',
      'Yes',
      '28.4758338',
      '-82.6120006'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Residence at Timber Pines'
        AND o.latitude = '28.4758338'
        AND o.longitude = '-82.6120006'));

COMMIT;
