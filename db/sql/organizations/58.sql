
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
      'Destiny Home Health and Hospice Care, Inc',
      '12364 Perris Blvd
Moreno Valley, CA 92557',
      'Moreno Valley',
      'CA',
      'May drop off to front desk, or mail to: PO Box 1000 Moreno Valley, CA 92556',
      'No',
      '33.9412373',
      '-117.2248262'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('sani cloths',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('barrier towels',
    (SELECT id FROM organizations o
      WHERE o.name = 'Destiny Home Health and Hospice Care, Inc'
        AND o.latitude = '33.9412373'
        AND o.longitude = '-117.2248262'));

COMMIT;
