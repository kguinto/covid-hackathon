
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
      'Acacia Network/Amanecer Promesa Department 2nd floor',
      '1776 Clay Ave
The Bronx, NY 10457',
      'New York - Bronx',
      'NY',
      'Attn:  Grissel H Reynoso  C/O Stephanie Curry',
      'No',
      '40.8462578',
      '-73.9042458'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acacia Network/Amanecer Promesa Department 2nd floor'
        AND o.latitude = '40.8462578'
        AND o.longitude = '-73.9042458'));

COMMIT;
