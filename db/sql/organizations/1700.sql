
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
      'University of Alabama at Birmingham (UAB)',
      '801 5th Ave S
Birmingham, AL 35233',
      'Birmingham',
      'AL',
      'Donations of approved items can be made on the UAB campus Monday-Friday from 9 am to 4 pm at the address above. **Note: the previous entry for this hospital was someone''s personal address - this info reflects the official dropoff location.**

Donations can also be made to the Jefferson County Department of Health though the JCDH Coordination Center (Monday-Friday from 10 am to 2 pm, phone number 205.254.2550).',
      'unknown',
      '33.4999764',
      '-86.8172346'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Alabama at Birmingham (UAB)'
        AND o.latitude = '33.4999764'
        AND o.longitude = '-86.8172346'));

COMMIT;
