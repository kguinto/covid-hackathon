
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
      'Vitas Hospice',
      '1604 Spring Hill Rd #450
Vienna, VA 22182',
      'Vienna',
      'VA',
      'Attn: Bruce Oren, Patient Care Administrator',
      'No',
      '38.926837',
      '-77.2469992'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vitas Hospice'
        AND o.latitude = '38.926837'
        AND o.longitude = '-77.2469992'));

COMMIT;
