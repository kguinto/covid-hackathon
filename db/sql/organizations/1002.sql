
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
      'North Central Baptist Hospital',
      '520 Madison Oak Dr.
San Antonio, TX 78258',
      'San Antonio',
      'TX',
      'Bring to the ED entrance 

OT

ATTN: NICU',
      'Yes',
      '29.6205416',
      '-98.4914012'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Baptist Hospital'
        AND o.latitude = '29.6205416'
        AND o.longitude = '-98.4914012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Baptist Hospital'
        AND o.latitude = '29.6205416'
        AND o.longitude = '-98.4914012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Baptist Hospital'
        AND o.latitude = '29.6205416'
        AND o.longitude = '-98.4914012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Baptist Hospital'
        AND o.latitude = '29.6205416'
        AND o.longitude = '-98.4914012'));

COMMIT;
