
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
      'Community Hospice & Palliative Care',
      '4266 Sunbeam Rd
Jacksonville, FL 32257',
      'Jacksonville',
      'FL',
      'Earl B. Hadlow Center for Caring Attn: Steven Choate
4266 Sunbeam Road
Jacksonville FL 32257 ',
      'Yes',
      '30.2044872',
      '-81.6054835'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Hospice & Palliative Care'
        AND o.latitude = '30.2044872'
        AND o.longitude = '-81.6054835'));

COMMIT;
